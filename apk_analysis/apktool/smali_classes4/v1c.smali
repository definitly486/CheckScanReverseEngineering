.class public final synthetic Lv1c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lv1c;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lv1c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lv1c;->a:Lv1c;

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzoh;

    iget-wide p0, p1, Lcom/google/android/gms/measurement/internal/zzoh;->zzb:J

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
