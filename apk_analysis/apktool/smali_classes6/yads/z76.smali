.class public final Lyads/z76;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/ni6;

.field public final b:Lyads/w86;

.field public final c:Lyads/u83;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/q84;)V
    .locals 2

    new-instance v0, Lyads/ni6;

    invoke-direct {v0}, Lyads/ni6;-><init>()V

    new-instance v1, Lyads/w86;

    invoke-direct {v1, p1, p2}, Lyads/w86;-><init>(Landroid/content/Context;Lyads/q84;)V

    new-instance p1, Lyads/u83;

    invoke-direct {p1}, Lyads/u83;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/z76;->a:Lyads/ni6;

    iput-object v1, p0, Lyads/z76;->b:Lyads/w86;

    iput-object p1, p0, Lyads/z76;->c:Lyads/u83;

    return-void
.end method
