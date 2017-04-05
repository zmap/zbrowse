Queue = require('./queue.js')

function Tree(data, networkData){
    var node = new Node(data, networkData);
    this._root = node;
}

function Node(data, networkData) {
    this.data = data;
    this.parent = null;
    this.children = [];
    this.networkData = networkData;
}

Tree.prototype.traverseBF = function(callback) {
    var queue = new Queue();
 
    queue.enqueue(this._root);

    currentTree = queue.dequeue();

    while(currentTree){
        for (var i = 0, length = currentTree.children.length; i < length; i++) {
            queue.enqueue(currentTree.children[i]);
        }
        callback(currentTree);
        currentTree = queue.dequeue();
    }
};
 
Tree.prototype.contains = function(callback, traversal) {
    traversal.call(this, callback);
};

 
Tree.prototype.add = function(data, toData, networkData, traversal) {
    var child = new Node(data, networkData),
        parent = null,
        callback = function(node) {
            if (node.data === toData) {
                node.children.push(child);
                child.parent = node.data;
            }
        };
    
    this.contains(callback, traversal);
};
 
function findIndex(arr, data) {
    var index;
 
    for (var i = 0; i < arr.length; i++) {
        if (arr[i].data === data) {
            index = i;
        }
    }
    return index;
}

module.exports = Tree;
