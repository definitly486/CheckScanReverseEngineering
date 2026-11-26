.class public final Lyads/he;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/lg;

.field public final b:Lyads/fj0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lyads/lg;

    invoke-direct {v0, p1}, Lyads/lg;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/he;->a:Lyads/lg;

    new-instance v0, Lyads/fj0;

    invoke-direct {v0, p1}, Lyads/fj0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lyads/he;->b:Lyads/fj0;

    return-void
.end method
