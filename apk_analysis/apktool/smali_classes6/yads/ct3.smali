.class public final Lyads/ct3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lyads/zu3;

.field public final c:Lyads/pp0;

.field public final d:Lyg5;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "YadPreferenceFile"

    invoke-static {p1, v0}, Lyads/bv3;->a(Landroid/content/Context;Ljava/lang/String;)Lyads/zu3;

    move-result-object v0

    new-instance v1, Lyads/pp0;

    invoke-direct {v1}, Lyads/pp0;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ct3;->a:Landroid/content/Context;

    iput-object v0, p0, Lyads/ct3;->b:Lyads/zu3;

    iput-object v1, p0, Lyads/ct3;->c:Lyads/pp0;

    new-instance p1, Lch5;

    invoke-direct {p1}, Lch5;-><init>()V

    iput-object p1, p0, Lyads/ct3;->d:Lyg5;

    return-void
.end method
