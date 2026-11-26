.class public final Lyads/gc4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lyads/fc4;

.field public static volatile d:Lyads/gc4;


# instance fields
.field public final a:I

.field public final b:Ljava/util/WeakHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/fc4;

    invoke-direct {v0}, Lyads/fc4;-><init>()V

    sput-object v0, Lyads/gc4;->c:Lyads/fc4;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lyads/gc4;->a:I

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lyads/gc4;->b:Ljava/util/WeakHashMap;

    return-void
.end method
