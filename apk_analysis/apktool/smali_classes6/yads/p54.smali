.class public final Lyads/p54;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/gn4;

.field public final b:Lyads/t64;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lyads/gn4;

    invoke-direct {v0}, Lyads/gn4;-><init>()V

    new-instance v1, Lyads/t64;

    invoke-direct {v1}, Lyads/t64;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/p54;->a:Lyads/gn4;

    iput-object v1, p0, Lyads/p54;->b:Lyads/t64;

    return-void
.end method
