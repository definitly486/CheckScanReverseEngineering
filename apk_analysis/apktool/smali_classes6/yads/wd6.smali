.class public final Lyads/wd6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lyads/vd6;

.field public static volatile d:Lyads/wd6;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lyads/e85;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/vd6;

    invoke-direct {v0}, Lyads/vd6;-><init>()V

    sput-object v0, Lyads/wd6;->c:Lyads/vd6;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lyads/wd6;->a:Landroid/content/Context;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lyads/cm6;->a(Landroid/content/Context;I)Lyads/e85;

    move-result-object p1

    iput-object p1, p0, Lyads/wd6;->b:Lyads/e85;

    return-void
.end method
