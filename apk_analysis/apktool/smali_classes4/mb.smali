.class public abstract Lmb;
.super Ll0$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmb$a;,
        Lmb$b;,
        Lmb$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<OutputT:",
        "Ljava/lang/Object;",
        ">",
        "Ll0$f<",
        "TOutputT;>;"
    }
.end annotation


# static fields
.field public static final k:Lmb$a;

.field public static final l:Lwn4;


# instance fields
.field public volatile i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public volatile j:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lwn4;

    const-class v1, Lmb;

    invoke-direct {v0, v1}, Lwn4;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lmb;->l:Lwn4;

    :try_start_0
    new-instance v0, Lmb$b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    new-instance v0, Lmb$c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :goto_0
    sput-object v0, Lmb;->k:Lmb$a;

    if-eqz v1, :cond_0

    sget-object v0, Lmb;->l:Lwn4;

    invoke-virtual {v0}, Lwn4;->a()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "SafeAtomicHelper is broken!"

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
