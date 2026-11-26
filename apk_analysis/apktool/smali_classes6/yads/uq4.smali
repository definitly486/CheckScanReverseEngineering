.class public final Lyads/uq4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/zu3;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "YadPreferenceFile"

    invoke-static {p1, v0}, Lyads/bv3;->a(Landroid/content/Context;Ljava/lang/String;)Lyads/zu3;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/uq4;->a:Lyads/zu3;

    return-void
.end method
