.class public final Lyads/wn2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static c:Lyads/wn2;

.field public static final d:Ljava/lang/Object;


# instance fields
.field public final a:Lyads/vn2;

.field public final b:Lyads/tb3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/wn2;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lyads/vn2;

    invoke-direct {v0}, Lyads/vn2;-><init>()V

    invoke-static {p1}, Lyads/jg;->a(Landroid/content/Context;)Lyads/tb3;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/wn2;->a:Lyads/vn2;

    iput-object p1, p0, Lyads/wn2;->b:Lyads/tb3;

    return-void
.end method
