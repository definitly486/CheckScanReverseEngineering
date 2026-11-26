.class public final Lyads/n73;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/q73;

.field public final b:Lyads/s73;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lyads/q73;

    invoke-direct {v0, p1}, Lyads/q73;-><init>(Landroid/content/Context;)V

    new-instance v1, Lyads/s73;

    invoke-direct {v1, p1}, Lyads/s73;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/n73;->a:Lyads/q73;

    iput-object v1, p0, Lyads/n73;->b:Lyads/s73;

    return-void
.end method
