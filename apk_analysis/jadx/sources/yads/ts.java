package yads;

import defpackage.j59;
import java.util.AbstractQueue;
import java.util.Collection;
import java.util.Iterator;
import java.util.PriorityQueue;
import java.util.Spliterator;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes4.dex */
public final class ts extends AbstractQueue implements BlockingQueue {
    public final PriorityQueue b;
    public final ReentrantLock c;
    public final Condition d;

    public ts(PriorityQueue priorityQueue) {
        this.b = priorityQueue;
        ReentrantLock reentrantLock = new ReentrantLock();
        this.c = reentrantLock;
        this.d = reentrantLock.newCondition();
    }

    @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection, java.util.Queue, java.util.concurrent.BlockingQueue
    public final boolean add(Object obj) {
        offer(obj);
        return true;
    }

    @Override // java.util.concurrent.BlockingQueue
    public final int drainTo(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Queue, java.util.concurrent.BlockingQueue
    public final boolean offer(Object obj) {
        this.c.lock();
        try {
            this.b.offer(obj);
            this.d.signal();
            j59 j59Var = j59.a;
            return true;
        } finally {
            this.c.unlock();
        }
    }

    @Override // java.util.Queue
    public final Object peek() {
        this.c.lock();
        try {
            return this.b.peek();
        } finally {
            this.c.unlock();
        }
    }

    @Override // java.util.concurrent.BlockingQueue
    public final Object poll(long j, TimeUnit timeUnit) throws InterruptedException {
        this.c.lockInterruptibly();
        try {
            long nanos = timeUnit.toNanos(j);
            while (this.b.isEmpty() && nanos > 0) {
                nanos = this.d.awaitNanos(nanos);
            }
            return this.b.poll();
        } finally {
            this.c.unlock();
        }
    }

    @Override // java.util.concurrent.BlockingQueue
    public final void put(Object obj) {
        offer(obj);
    }

    @Override // java.util.concurrent.BlockingQueue
    public final int remainingCapacity() {
        return Integer.MAX_VALUE;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.concurrent.BlockingQueue
    public final boolean remove(Object obj) {
        this.c.lock();
        try {
            return this.b.remove(obj);
        } finally {
            this.c.unlock();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        this.c.lock();
        try {
            return this.b.size();
        } finally {
            this.c.unlock();
        }
    }

    @Override // java.util.Collection, java.lang.Iterable
    public final Spliterator spliterator() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.BlockingQueue
    public final Object take() throws InterruptedException {
        this.c.lockInterruptibly();
        while (this.b.isEmpty()) {
            try {
                this.d.await();
            } catch (Throwable th) {
                this.c.unlock();
                throw th;
            }
        }
        Object objPoll = this.b.poll();
        this.c.unlock();
        return objPoll;
    }

    @Override // java.util.concurrent.BlockingQueue
    public final int drainTo(Collection collection, int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.BlockingQueue
    public final boolean offer(Object obj, long j, TimeUnit timeUnit) {
        offer(obj);
        return true;
    }

    @Override // java.util.Queue
    public final Object poll() {
        this.c.lock();
        try {
            return this.b.poll();
        } finally {
            this.c.unlock();
        }
    }
}
