.class public final Lyads/ql0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/e4;

.field public final b:Lyads/bf5;

.field public final c:Lyads/d9;

.field public final d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;Lyads/d9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/ql0;->a:Lyads/e4;

    iput-object p3, p0, Lyads/ql0;->b:Lyads/bf5;

    iput-object p4, p0, Lyads/ql0;->c:Lyads/d9;

    invoke-static {p1}, Lyads/w60;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lyads/ql0;->d:Landroid/content/Context;

    return-void
.end method
