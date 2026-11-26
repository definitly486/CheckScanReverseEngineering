.class public final Lyads/dw3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ly22;

.field public b:Lmb4;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lyads/i90;

    invoke-direct {v0}, Lyads/i90;-><init>()V

    invoke-static {}, Lrm9;->b()Ljd8;

    move-result-object v1

    invoke-static {v1, v0}, Lyads/xn;->a(Lhq1;Lyads/i90;)Ly22;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/dw3;->a:Ly22;

    return-void
.end method
