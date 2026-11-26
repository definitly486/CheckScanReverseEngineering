.class public final Lo59;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv47;
.implements Lrxa;


# static fields
.field public static final b:Lo59;

.field public static final synthetic c:Lo59;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lo59;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo59;->b:Lo59;

    new-instance v0, Lo59;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo59;->c:Lo59;

    return-void
.end method


# virtual methods
.method public a(Le47;Lxz5;)Le47;
    .locals 0

    return-object p1
.end method

.method public synthetic zza()Ljava/lang/Object;
    .locals 0

    sget-object p0, Lcom/google/android/gms/measurement/internal/zzfy;->a:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzags;->zzp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
