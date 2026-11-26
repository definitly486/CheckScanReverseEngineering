.class public final synthetic Lj3c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkd8;


# instance fields
.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj3c;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzlw;->a:Ljava/lang/Object;

    iget-object p0, p0, Lj3c;->b:Landroid/content/Context;

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzlf;->zza(Landroid/content/Context;)Lrz5;

    move-result-object p0

    return-object p0
.end method
