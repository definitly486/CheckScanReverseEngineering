.class public final Lm0$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# static fields
.field public static final c:Lm0$e;


# instance fields
.field public volatile a:Ljava/lang/Thread;

.field public volatile b:Lm0$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm0$e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lm0$e;->c:Lm0$e;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lm0;->h:Lm0$a;

    invoke-virtual {v1, p0, v0}, Lm0$a;->g(Lm0$e;Ljava/lang/Thread;)V

    return-void
.end method
