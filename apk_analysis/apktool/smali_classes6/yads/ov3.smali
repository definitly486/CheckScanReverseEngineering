.class public final Lyads/ov3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lyads/g55;

.field public final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lyads/g55;

    invoke-direct {v0}, Lyads/g55;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/ov3;->a:Ljava/lang/String;

    iput-object v0, p0, Lyads/ov3;->b:Lyads/g55;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lyads/ov3;->c:Landroid/content/Context;

    return-void
.end method
