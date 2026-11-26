package androidx.compose.ui.graphics;

import defpackage.j59;
import defpackage.nl3;
import defpackage.nm1;
import defpackage.re4;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class IntervalTree<T> {
    public static final int $stable = 8;
    public IntervalTree<T>.Node root;
    public final ArrayList<IntervalTree<T>.Node> stack;
    public final IntervalTree<T>.Node terminator;

    public final class Node extends Interval<T> {
        private int color;
        private IntervalTree<T>.Node left;
        private float max;
        private float min;
        private IntervalTree<T>.Node parent;
        private IntervalTree<T>.Node right;

        public Node(float f, float f2, T t, int i) {
            super(f, f2, t);
            this.color = i;
            this.min = f;
            this.max = f2;
            IntervalTree<T>.Node node = IntervalTree.this.terminator;
            this.left = node;
            this.right = node;
            this.parent = node;
        }

        public final int getColor() {
            return this.color;
        }

        public final IntervalTree<T>.Node getLeft() {
            return this.left;
        }

        public final float getMax() {
            return this.max;
        }

        public final float getMin() {
            return this.min;
        }

        public final IntervalTree<T>.Node getParent() {
            return this.parent;
        }

        public final IntervalTree<T>.Node getRight() {
            return this.right;
        }

        public final IntervalTree<T>.Node lowestNode() {
            Node node = this;
            while (true) {
                IntervalTree<T>.Node node2 = node.left;
                if (node2 == IntervalTree.this.terminator) {
                    return node;
                }
                node = node2;
            }
        }

        public final IntervalTree<T>.Node next() {
            IntervalTree<T>.Node node = this.right;
            if (node != IntervalTree.this.terminator) {
                return node.lowestNode();
            }
            IntervalTree<T>.Node node2 = this.parent;
            Node node3 = this;
            while (node2 != IntervalTree.this.terminator && node3 == node2.right) {
                node3 = node2;
                node2 = node2.parent;
            }
            return node2;
        }

        public final void setColor(int i) {
            this.color = i;
        }

        public final void setLeft(IntervalTree<T>.Node node) {
            this.left = node;
        }

        public final void setMax(float f) {
            this.max = f;
        }

        public final void setMin(float f) {
            this.min = f;
        }

        public final void setParent(IntervalTree<T>.Node node) {
            this.parent = node;
        }

        public final void setRight(IntervalTree<T>.Node node) {
            this.right = node;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.graphics.IntervalTree$iterator$1, reason: invalid class name */
    public static final class AnonymousClass1 implements Iterator<Interval<T>>, re4 {
        private IntervalTree<T>.Node next;
        final /* synthetic */ IntervalTree<T> this$0;

        public AnonymousClass1(IntervalTree<T> intervalTree) {
            this.this$0 = intervalTree;
            this.next = intervalTree.root.lowestNode();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.next != this.this$0.terminator;
        }

        @Override // java.util.Iterator
        public Interval<T> next() {
            IntervalTree<T>.Node node = this.next;
            this.next = node.next();
            return node;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public IntervalTree() {
        IntervalTree<T>.Node node = new Node(Float.MAX_VALUE, Float.MIN_VALUE, null, 1);
        this.terminator = node;
        this.root = node;
        this.stack = new ArrayList<>();
    }

    public static /* synthetic */ Interval findFirstOverlap$default(IntervalTree intervalTree, float f, float f2, int i, Object obj) {
        if ((i & 2) != 0) {
            f2 = f;
        }
        return intervalTree.findFirstOverlap(f, f2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ List findOverlaps$default(IntervalTree intervalTree, float f, float f2, List list, int i, Object obj) {
        if ((i & 2) != 0) {
            f2 = f;
        }
        if ((i & 4) != 0) {
            list = new ArrayList();
        }
        return intervalTree.findOverlaps(f, f2, list);
    }

    public static /* synthetic */ void forEach$ui_graphics$default(IntervalTree intervalTree, float f, float f2, nl3 nl3Var, int i, Object obj) {
        if ((i & 2) != 0) {
            f2 = f;
        }
        IntervalTree<T>.Node node = intervalTree.root;
        if (node != intervalTree.terminator) {
            ArrayList<IntervalTree<T>.Node> arrayList = intervalTree.stack;
            arrayList.add(node);
            while (arrayList.size() > 0) {
                IntervalTree<T>.Node nodeRemove = arrayList.remove(arrayList.size() - 1);
                if (nodeRemove.overlaps(f, f2)) {
                    nl3Var.invoke(nodeRemove);
                }
                if (nodeRemove.getLeft() != intervalTree.terminator && nodeRemove.getLeft().getMax() >= f) {
                    arrayList.add(nodeRemove.getLeft());
                }
                if (nodeRemove.getRight() != intervalTree.terminator && nodeRemove.getRight().getMin() <= f2) {
                    arrayList.add(nodeRemove.getRight());
                }
            }
            arrayList.clear();
        }
    }

    private final void rebalance(IntervalTree<T>.Node node) {
        while (node != this.root && node.getParent().getColor() == 0) {
            IntervalTree<T>.Node parent = node.getParent().getParent();
            if (node.getParent() == parent.getLeft()) {
                IntervalTree<T>.Node right = parent.getRight();
                if (right.getColor() == 0) {
                    right.setColor(1);
                    node.getParent().setColor(1);
                    parent.setColor(0);
                    node = parent;
                } else {
                    if (node == node.getParent().getRight()) {
                        node = node.getParent();
                        rotateLeft(node);
                    }
                    node.getParent().setColor(1);
                    parent.setColor(0);
                    rotateRight(parent);
                }
            } else {
                IntervalTree<T>.Node left = parent.getLeft();
                if (left.getColor() == 0) {
                    left.setColor(1);
                    node.getParent().setColor(1);
                    parent.setColor(0);
                    node = parent;
                } else {
                    if (node == node.getParent().getLeft()) {
                        node = node.getParent();
                        rotateRight(node);
                    }
                    node.getParent().setColor(1);
                    parent.setColor(0);
                    rotateLeft(parent);
                }
            }
        }
        this.root.setColor(1);
    }

    private final void rotateLeft(IntervalTree<T>.Node node) {
        IntervalTree<T>.Node right = node.getRight();
        node.setRight(right.getLeft());
        if (right.getLeft() != this.terminator) {
            right.getLeft().setParent(node);
        }
        right.setParent(node.getParent());
        if (node.getParent() == this.terminator) {
            this.root = right;
        } else if (node.getParent().getLeft() == node) {
            node.getParent().setLeft(right);
        } else {
            node.getParent().setRight(right);
        }
        right.setLeft(node);
        node.setParent(right);
        updateNodeData(node);
    }

    private final void rotateRight(IntervalTree<T>.Node node) {
        IntervalTree<T>.Node left = node.getLeft();
        node.setLeft(left.getRight());
        if (left.getRight() != this.terminator) {
            left.getRight().setParent(node);
        }
        left.setParent(node.getParent());
        if (node.getParent() == this.terminator) {
            this.root = left;
        } else if (node.getParent().getRight() == node) {
            node.getParent().setRight(left);
        } else {
            node.getParent().setLeft(left);
        }
        left.setRight(node);
        node.setParent(left);
        updateNodeData(node);
    }

    private final void updateNodeData(IntervalTree<T>.Node node) {
        while (node != this.terminator) {
            node.setMin(Math.min(node.getStart(), Math.min(node.getLeft().getMin(), node.getRight().getMin())));
            node.setMax(Math.max(node.getEnd(), Math.max(node.getLeft().getMax(), node.getRight().getMax())));
            node = node.getParent();
        }
    }

    public final void addInterval(float f, float f2, T t) {
        IntervalTree<T>.Node node = new Node(f, f2, t, 0);
        IntervalTree<T>.Node node2 = this.terminator;
        for (IntervalTree<T>.Node left = this.root; left != this.terminator; left = node.getStart() <= left.getStart() ? left.getLeft() : left.getRight()) {
            node2 = left;
        }
        node.setParent(node2);
        if (node2 == this.terminator) {
            this.root = node;
        } else if (node.getStart() <= node2.getStart()) {
            node2.setLeft(node);
        } else {
            node2.setRight(node);
        }
        updateNodeData(node);
        rebalance(node);
    }

    public final void clear() {
        this.root = this.terminator;
    }

    public final boolean contains(nm1<Float> nm1Var) {
        return findFirstOverlap(nm1Var.getStart().floatValue(), nm1Var.getEndInclusive().floatValue()) != IntervalTreeKt.getEmptyInterval();
    }

    public final Interval<T> findFirstOverlap(float f, float f2) {
        IntervalTree<T>.Node node = this.root;
        IntervalTree<T>.Node node2 = this.terminator;
        if (node != node2 && node != node2) {
            ArrayList<IntervalTree<T>.Node> arrayList = this.stack;
            arrayList.add(node);
            while (arrayList.size() > 0) {
                IntervalTree<T>.Node nodeRemove = arrayList.remove(arrayList.size() - 1);
                if (nodeRemove.overlaps(f, f2)) {
                    return nodeRemove;
                }
                if (nodeRemove.getLeft() != this.terminator && nodeRemove.getLeft().getMax() >= f) {
                    arrayList.add(nodeRemove.getLeft());
                }
                if (nodeRemove.getRight() != this.terminator && nodeRemove.getRight().getMin() <= f2) {
                    arrayList.add(nodeRemove.getRight());
                }
            }
            arrayList.clear();
        }
        Interval<T> interval = (Interval<T>) IntervalTreeKt.getEmptyInterval();
        interval.getClass();
        return interval;
    }

    public final List<Interval<T>> findOverlaps(float f, float f2, List<Interval<T>> list) {
        IntervalTree<T>.Node node = this.root;
        if (node != this.terminator) {
            ArrayList<IntervalTree<T>.Node> arrayList = this.stack;
            arrayList.add(node);
            while (arrayList.size() > 0) {
                IntervalTree<T>.Node nodeRemove = arrayList.remove(arrayList.size() - 1);
                if (nodeRemove.overlaps(f, f2)) {
                    list.add(nodeRemove);
                }
                if (nodeRemove.getLeft() != this.terminator && nodeRemove.getLeft().getMax() >= f) {
                    arrayList.add(nodeRemove.getLeft());
                }
                if (nodeRemove.getRight() != this.terminator && nodeRemove.getRight().getMin() <= f2) {
                    arrayList.add(nodeRemove.getRight());
                }
            }
            arrayList.clear();
        }
        return list;
    }

    public final void forEach$ui_graphics(nm1<Float> nm1Var, nl3<? super Interval<T>, j59> nl3Var) {
        float fFloatValue = nm1Var.getStart().floatValue();
        float fFloatValue2 = nm1Var.getEndInclusive().floatValue();
        IntervalTree<T>.Node node = this.root;
        if (node != this.terminator) {
            ArrayList<IntervalTree<T>.Node> arrayList = this.stack;
            arrayList.add(node);
            while (arrayList.size() > 0) {
                IntervalTree<T>.Node nodeRemove = arrayList.remove(arrayList.size() - 1);
                if (nodeRemove.overlaps(fFloatValue, fFloatValue2)) {
                    nl3Var.invoke(nodeRemove);
                }
                if (nodeRemove.getLeft() != this.terminator && nodeRemove.getLeft().getMax() >= fFloatValue) {
                    arrayList.add(nodeRemove.getLeft());
                }
                if (nodeRemove.getRight() != this.terminator && nodeRemove.getRight().getMin() <= fFloatValue2) {
                    arrayList.add(nodeRemove.getRight());
                }
            }
            arrayList.clear();
        }
    }

    public final Iterator<Interval<T>> iterator() {
        return new AnonymousClass1(this);
    }

    public final void plusAssign(Interval<T> interval) {
        addInterval(interval.getStart(), interval.getEnd(), interval.getData());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ List findOverlaps$default(IntervalTree intervalTree, nm1 nm1Var, List list, int i, Object obj) {
        if ((i & 2) != 0) {
            list = new ArrayList();
        }
        return intervalTree.findOverlaps(nm1Var, list);
    }

    public final boolean contains(float f) {
        return findFirstOverlap(f, f) != IntervalTreeKt.getEmptyInterval();
    }

    public final List<Interval<T>> findOverlaps(nm1<Float> nm1Var, List<Interval<T>> list) {
        return findOverlaps(nm1Var.getStart().floatValue(), nm1Var.getEndInclusive().floatValue(), list);
    }

    public final Interval<T> findFirstOverlap(nm1<Float> nm1Var) {
        return findFirstOverlap(nm1Var.getStart().floatValue(), nm1Var.getEndInclusive().floatValue());
    }

    public final void forEach$ui_graphics(float f, float f2, nl3<? super Interval<T>, j59> nl3Var) {
        IntervalTree<T>.Node node = this.root;
        if (node != this.terminator) {
            ArrayList<IntervalTree<T>.Node> arrayList = this.stack;
            arrayList.add(node);
            while (arrayList.size() > 0) {
                IntervalTree<T>.Node nodeRemove = arrayList.remove(arrayList.size() - 1);
                if (nodeRemove.overlaps(f, f2)) {
                    nl3Var.invoke(nodeRemove);
                }
                if (nodeRemove.getLeft() != this.terminator && nodeRemove.getLeft().getMax() >= f) {
                    arrayList.add(nodeRemove.getLeft());
                }
                if (nodeRemove.getRight() != this.terminator && nodeRemove.getRight().getMin() <= f2) {
                    arrayList.add(nodeRemove.getRight());
                }
            }
            arrayList.clear();
        }
    }
}
