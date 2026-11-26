.class public final synthetic Lzva;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field public static final synthetic b:Lzva;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lzva;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lzva;->b:Lzva;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    sget-object p0, Lqb5;->f:Lcom/google/android/gms/common/internal/GmsLogger;

    const/4 p0, 0x0

    return-object p0
.end method
