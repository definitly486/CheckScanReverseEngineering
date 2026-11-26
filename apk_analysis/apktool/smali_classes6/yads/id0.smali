.class public final enum Lyads/id0;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum c:Lyads/id0;

.field public static final enum d:Lyads/id0;

.field public static final enum e:Lyads/id0;

.field public static final enum f:Lyads/id0;

.field public static final enum g:Lyads/id0;

.field public static final enum h:Lyads/id0;

.field public static final synthetic i:[Lyads/id0;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lyads/id0;

    const/4 v1, 0x0

    const-string v2, "cross_clicked"

    const-string v3, "CROSS_CLICKED"

    invoke-direct {v0, v3, v1, v2}, Lyads/id0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lyads/id0;->c:Lyads/id0;

    new-instance v1, Lyads/id0;

    const/4 v2, 0x1

    const-string v3, "activity_opened"

    const-string v4, "ACTIVITY_OPENED"

    invoke-direct {v1, v4, v2, v3}, Lyads/id0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lyads/id0;->d:Lyads/id0;

    new-instance v2, Lyads/id0;

    const/4 v3, 0x2

    const-string v4, "activity_restarted"

    const-string v5, "ACTIVITY_RESTARTED"

    invoke-direct {v2, v5, v3, v4}, Lyads/id0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lyads/id0;->e:Lyads/id0;

    new-instance v3, Lyads/id0;

    const/4 v4, 0x3

    const-string v5, "cross_timer_start"

    const-string v6, "CROSS_TIMER_START"

    invoke-direct {v3, v6, v4, v5}, Lyads/id0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lyads/id0;->f:Lyads/id0;

    new-instance v4, Lyads/id0;

    const/4 v5, 0x4

    const-string v6, "cross_timer_end"

    const-string v7, "CROSS_TIMER_END"

    invoke-direct {v4, v7, v5, v6}, Lyads/id0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lyads/id0;->g:Lyads/id0;

    new-instance v5, Lyads/id0;

    const/4 v6, 0x5

    const-string v7, "failed_to_create_download_manager"

    const-string v8, "FAILED_TO_CREATE_DOWNLOAD_MANAGER"

    invoke-direct {v5, v8, v6, v7}, Lyads/id0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lyads/id0;->h:Lyads/id0;

    new-instance v6, Lyads/id0;

    const/4 v7, 0x6

    const-string v8, "listener_is_null_on_loading_finished"

    const-string v9, "LISTENER_IS_NULL_ON_LOADING_FINISHED"

    invoke-direct {v6, v9, v7, v8}, Lyads/id0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v7, Lyads/id0;

    const/4 v8, 0x7

    const-string v9, "instream_ad_player_validation_error"

    const-string v10, "INSTREAM_AD_PLAYER_VALIDATION_ERROR"

    invoke-direct {v7, v10, v8, v9}, Lyads/id0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    filled-new-array/range {v0 .. v7}, [Lyads/id0;

    move-result-object v0

    sput-object v0, Lyads/id0;->i:[Lyads/id0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lyads/id0;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/id0;
    .locals 1

    const-class v0, Lyads/id0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/id0;

    return-object p0
.end method

.method public static values()[Lyads/id0;
    .locals 1

    sget-object v0, Lyads/id0;->i:[Lyads/id0;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/id0;

    return-object v0
.end method
