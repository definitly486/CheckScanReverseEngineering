.class public final synthetic Lita;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llm3;


# static fields
.field public static final synthetic b:Lita;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lita;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lita;->b:Lita;

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzagr;->zzb(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
