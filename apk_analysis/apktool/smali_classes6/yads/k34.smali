.class public final Lyads/k34;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/e40;

.field public final b:Lyads/xh4;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lyads/e40;

    invoke-direct {v0}, Lyads/e40;-><init>()V

    new-instance v1, Lyads/xh4;

    invoke-direct {v1}, Lyads/xh4;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/k34;->a:Lyads/e40;

    iput-object v1, p0, Lyads/k34;->b:Lyads/xh4;

    return-void
.end method
