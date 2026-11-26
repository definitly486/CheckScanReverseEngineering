.class public final Lyads/qo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/ko;

.field public final b:Lyads/ms3;


# direct methods
.method public constructor <init>(Lyads/e4;Lyads/bf5;)V
    .locals 1

    new-instance v0, Lyads/ko;

    invoke-direct {v0, p1, p2}, Lyads/ko;-><init>(Lyads/e4;Lyads/bf5;)V

    new-instance p1, Lyads/ms3;

    invoke-direct {p1, p2}, Lyads/ms3;-><init>(Lyads/bf5;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/qo;->a:Lyads/ko;

    iput-object p1, p0, Lyads/qo;->b:Lyads/ms3;

    return-void
.end method
