.class public final Lyads/cn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/v93;

.field public final b:Lyads/u93;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lyads/v93;

    invoke-direct {v0}, Lyads/v93;-><init>()V

    new-instance v1, Lyads/u93;

    invoke-direct {v1}, Lyads/u93;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/cn;->a:Lyads/v93;

    iput-object v1, p0, Lyads/cn;->b:Lyads/u93;

    return-void
.end method
