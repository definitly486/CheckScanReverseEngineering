.class public final Lkq5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/zao;


# instance fields
.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lkq5;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isConnected()Z
    .locals 0

    iget-object p0, p0, Lkq5;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/common/api/internal/zaaz;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zaaz;->isConnected()Z

    move-result p0

    return p0
.end method
