.class public final Lyads/ke;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/lang/Object;


# instance fields
.field public final a:Lyads/he;

.field public final b:Ly22;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/ke;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lyads/he;

    invoke-direct {v0, p1}, Lyads/he;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lyads/k90;->a()Ly22;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/ke;->a:Lyads/he;

    iput-object p1, p0, Lyads/ke;->b:Ly22;

    return-void
.end method

.method public static a(Lyads/rf;)V
    .locals 0

    invoke-virtual {p0}, Lyads/rf;->a()Ljava/lang/String;

    invoke-virtual {p0}, Lyads/rf;->b()Ljava/lang/String;

    return-void
.end method
