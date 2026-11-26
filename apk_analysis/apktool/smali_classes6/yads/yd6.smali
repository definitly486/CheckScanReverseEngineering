.class public final Lyads/yd6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/c15;

.field public final b:Lyads/he6;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lyads/c15;

    invoke-direct {v0}, Lyads/c15;-><init>()V

    new-instance v1, Lyads/he6;

    invoke-direct {v1}, Lyads/he6;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/yd6;->a:Lyads/c15;

    iput-object v1, p0, Lyads/yd6;->b:Lyads/he6;

    return-void
.end method
