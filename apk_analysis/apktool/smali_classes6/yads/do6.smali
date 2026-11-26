.class public final Lyads/do6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/bf5;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lyads/w60;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lyads/do6;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Lyads/q84;
    .locals 0

    iget-object p0, p0, Lyads/do6;->a:Landroid/content/Context;

    invoke-static {p0, p0}, Lyads/mw;->a(Landroid/content/Context;Landroid/content/Context;)Lyads/q84;

    move-result-object p0

    return-object p0
.end method
