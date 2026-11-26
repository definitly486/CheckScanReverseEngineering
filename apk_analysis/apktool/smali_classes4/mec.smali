.class public final synthetic Lmec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lks;


# static fields
.field public static final synthetic a:Lmec;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lmec;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmec;->a:Lmec;

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    check-cast p1, Landroid/net/Uri;

    const-string p0, ""

    invoke-static {p0}, Len3;->X(Ljava/lang/Object;)Lu24;

    move-result-object p0

    return-object p0
.end method
