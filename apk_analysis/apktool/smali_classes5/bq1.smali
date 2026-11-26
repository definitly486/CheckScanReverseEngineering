.class public final Lbq1;
.super Lqp1;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Lqp1;-><init>()V

    iput-object p1, p0, Lbq1;->b:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final h(Lmq1;)V
    .locals 1

    sget-object v0, Lhx2;->INSTANCE:Lhx2;

    invoke-interface {p1, v0}, Lmq1;->onSubscribe(Lcp2;)V

    iget-object p0, p0, Lbq1;->b:Ljava/lang/Throwable;

    invoke-interface {p1, p0}, Lmq1;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
