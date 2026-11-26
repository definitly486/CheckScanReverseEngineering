.class public final Lyads/i93;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Lyads/i93;

.field public static final b:Lyads/j93;

.field public static final c:Lyads/j93;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lyads/i93;

    invoke-direct {v0}, Lyads/i93;-><init>()V

    sput-object v0, Lyads/i93;->a:Lyads/i93;

    new-instance v0, Lgg;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/i93;->b:Lyads/j93;

    new-instance v0, Lhg;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lhg;-><init>(I)V

    sput-object v0, Lyads/i93;->c:Lyads/j93;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static final b(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
