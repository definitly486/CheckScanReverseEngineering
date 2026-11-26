.class public final Lrw5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Low5;


# instance fields
.field public final a:La10;


# direct methods
.method public constructor <init>(La10;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrw5;->a:La10;

    return-void
.end method


# virtual methods
.method public final a()Ltb7;
    .locals 2

    new-instance v0, Lqw5;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lqw5;-><init>(Lrw5;Le02;)V

    new-instance p0, Ltb7;

    invoke-direct {p0, v0}, Ltb7;-><init>(Lbm3;)V

    return-object p0
.end method

.method public final b()Ltb7;
    .locals 2

    new-instance v0, Lpw5;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lpw5;-><init>(Lrw5;Le02;)V

    new-instance p0, Ltb7;

    invoke-direct {p0, v0}, Ltb7;-><init>(Lbm3;)V

    return-object p0
.end method
