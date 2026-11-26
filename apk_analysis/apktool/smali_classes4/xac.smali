.class public final synthetic Lxac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llm3;


# static fields
.field public static final synthetic b:Lxac;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lxac;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lxac;->b:Lxac;

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/content/Context;

    sget-object p0, Lcom/google/android/gms/internal/measurement/zzpg;->h:Lcom/google/android/gms/internal/measurement/zzpe;

    const-string p0, ""

    return-object p0
.end method
