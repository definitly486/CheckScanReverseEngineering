.class public final Lyads/tu5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/gg6;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/tu5;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    new-instance v0, Lyads/xu5;

    iget-object p0, p0, Lyads/tu5;->a:Landroid/content/Context;

    invoke-direct {v0, p0}, Lyads/xu5;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
