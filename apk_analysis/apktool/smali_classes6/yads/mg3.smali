.class public final Lyads/mg3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/g94;

.field public final b:Lyads/t70;


# direct methods
.method public constructor <init>(Lyads/g94;Lyads/t70;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/mg3;->a:Lyads/g94;

    iput-object p2, p0, Lyads/mg3;->b:Lyads/t70;

    return-void
.end method

.method public static final a(Lyads/mg3;)V
    .locals 0

    .line 16
    iget-object p0, p0, Lyads/mg3;->b:Lyads/t70;

    invoke-interface {p0}, Lyads/t70;->onInitializationCompleted()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lyads/mg3;->a:Lyads/g94;

    new-instance v1, Liu0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Liu0;-><init>(Ljava/lang/Object;I)V

    iget-object p0, v0, Lyads/g94;->a:Lyads/h94;

    iget-object p0, p0, Lyads/h94;->a:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
