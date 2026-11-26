.class public final synthetic Lyga;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final synthetic c:I

.field public final synthetic d:Lyads/tt3;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;ILyads/tt3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyga;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    iput p2, p0, Lyga;->c:I

    iput-object p3, p0, Lyga;->d:Lyads/tt3;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lyga;->c:I

    iget-object v1, p0, Lyga;->d:Lyads/tt3;

    iget-object p0, p0, Lyga;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p0, v0, v1}, Lyads/wt3;->a(Ljava/util/concurrent/CopyOnWriteArraySet;ILyads/tt3;)V

    return-void
.end method
