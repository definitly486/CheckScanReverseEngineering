.class public final synthetic Lv8b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field public static final synthetic b:Lv8b;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lv8b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lv8b;->b:Lv8b;

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 0

    new-instance p0, Lcom/google/android/gms/internal/measurement/zzy;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzy;-><init>()V

    return-object p0
.end method
