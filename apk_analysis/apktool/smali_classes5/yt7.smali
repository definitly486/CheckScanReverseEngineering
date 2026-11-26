.class public final Lyt7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyt7$b;,
        Lyt7$c;
    }
.end annotation


# static fields
.field public static final c:Lyt7;


# instance fields
.field public final a:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lyt7$c<",
            "*>;",
            "Lyt7$b;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lyt7;

    new-instance v1, Lyt7$a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Lyt7;-><init>(Lyt7$a;)V

    sput-object v0, Lyt7;->c:Lyt7;

    return-void
.end method

.method public constructor <init>(Lyt7$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lyt7;->a:Ljava/util/IdentityHashMap;

    return-void
.end method
