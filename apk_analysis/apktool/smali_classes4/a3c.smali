.class public final synthetic La3c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkd8;


# instance fields
.field public final synthetic b:Lkd8;


# direct methods
.method public synthetic constructor <init>(Lkd8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La3c;->b:Lkd8;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzlk;->j:Ljava/lang/Object;

    iget-object p0, p0, La3c;->b:Lkd8;

    invoke-interface {p0}, Lkd8;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lrz5;

    invoke-virtual {p0}, Lrz5;->e()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzqm;

    return-object p0
.end method
