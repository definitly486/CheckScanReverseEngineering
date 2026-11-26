.class public final Lyads/ip6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/yp6;

.field public final b:Lyads/qp6;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyads/yp6;

    invoke-direct {v0}, Lyads/yp6;-><init>()V

    iput-object v0, p0, Lyads/ip6;->a:Lyads/yp6;

    new-instance v1, Lyads/qp6;

    invoke-direct {v1, v0}, Lyads/qp6;-><init>(Lyads/yp6;)V

    iput-object v1, p0, Lyads/ip6;->b:Lyads/qp6;

    return-void
.end method
