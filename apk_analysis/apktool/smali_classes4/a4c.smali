.class public final La4c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:La4c;


# instance fields
.field public volatile a:Ljava/lang/Thread;

.field public volatile b:La4c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La4c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, La4c;->c:La4c;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzo;->g:Ly14;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ly14;->Q(La4c;Ljava/lang/Thread;)V

    return-void
.end method
