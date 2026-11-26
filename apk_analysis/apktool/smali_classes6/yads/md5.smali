.class public final Lyads/md5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/mf4;


# instance fields
.field public final a:Lyads/bf5;


# direct methods
.method public constructor <init>(Lyads/bf5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/md5;->a:Lyads/bf5;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lyads/e4;Lyads/d9;)Lyads/lf4;
    .locals 1

    new-instance v0, Lyads/lf4;

    iget-object p0, p0, Lyads/md5;->a:Lyads/bf5;

    invoke-direct {v0, p1, p2, p0, p3}, Lyads/lf4;-><init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;Lyads/d9;)V

    return-object v0
.end method
