.class public final Lyads/fe3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/yd3;

.field public final b:Lyads/zl4;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lyads/yd3;

    invoke-direct {v0}, Lyads/yd3;-><init>()V

    new-instance v1, Lyads/zl4;

    invoke-direct {v1}, Lyads/zl4;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/fe3;->a:Lyads/yd3;

    iput-object v1, p0, Lyads/fe3;->b:Lyads/zl4;

    return-void
.end method
