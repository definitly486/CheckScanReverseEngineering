.class public final Lyads/qe4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/e4;

.field public final b:Lyads/bf5;

.field public final c:Lyads/d9;

.field public final d:Landroid/content/Context;

.field public e:Lyads/zh4;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;Lyads/d9;)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/qe4;->a:Lyads/e4;

    iput-object p3, p0, Lyads/qe4;->b:Lyads/bf5;

    iput-object p4, p0, Lyads/qe4;->c:Lyads/d9;

    iput-object p1, p0, Lyads/qe4;->d:Landroid/content/Context;

    return-void
.end method
