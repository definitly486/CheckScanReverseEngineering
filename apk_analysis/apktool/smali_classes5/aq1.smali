.class public final Laq1;
.super Lqp1;
.source "SourceFile"


# static fields
.field public static final b:Laq1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Laq1;

    invoke-direct {v0}, Lqp1;-><init>()V

    sput-object v0, Laq1;->b:Laq1;

    return-void
.end method


# virtual methods
.method public final h(Lmq1;)V
    .locals 0

    sget-object p0, Lhx2;->INSTANCE:Lhx2;

    invoke-interface {p1, p0}, Lmq1;->onSubscribe(Lcp2;)V

    invoke-interface {p1}, Lmq1;->onComplete()V

    return-void
.end method
