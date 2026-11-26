.class public final enum Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResourceParameter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACCOUNT_SELECTION_STATE:Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;

.field public static final enum ACCOUNT_SELECTION_TOKEN:Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;

.field public static final enum GHP_ALLOWED_STRUCTURE_IDS:Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;

.field public static final enum GHP_ALLOW_STRUCTURE_CHANGE:Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;

.field public static final enum GHP_INVITATION_TOKEN:Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;

.field public static final enum GHP_STRUCTURE_ID:Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;

.field public static final enum PICKER_ALLOW_FOLDER_SELECTION:Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;

.field public static final enum PICKER_ALLOW_MULTIPLE:Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;

.field public static final enum PICKER_FILE_IDS:Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;

.field public static final enum PICKER_MIMETYPES:Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;

.field public static final enum PICKER_OAUTH_TRIGGER:Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;

.field private static final synthetic zbb:[Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;


# instance fields
.field final zba:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;

    const-string v1, "ACCOUNT_SELECTION_TOKEN"

    const/4 v2, 0x0

    const-string v3, "account_selection_token"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;->ACCOUNT_SELECTION_TOKEN:Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;

    new-instance v1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;

    const-string v2, "ACCOUNT_SELECTION_STATE"

    const/4 v3, 0x1

    const-string v4, "account_selection_state"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;->ACCOUNT_SELECTION_STATE:Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;

    new-instance v2, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;

    const-string v3, "PICKER_ALLOW_MULTIPLE"

    const/4 v4, 0x2

    const-string v5, "allow_multiple"

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;->PICKER_ALLOW_MULTIPLE:Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;

    new-instance v3, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;

    const-string v4, "PICKER_MIMETYPES"

    const/4 v5, 0x3

    const-string v6, "mimetypes"

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;->PICKER_MIMETYPES:Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;

    new-instance v4, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;

    const-string v5, "PICKER_FILE_IDS"

    const/4 v6, 0x4

    const-string v7, "file_ids"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;->PICKER_FILE_IDS:Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;

    new-instance v5, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;

    const-string v6, "PICKER_OAUTH_TRIGGER"

    const/4 v7, 0x5

    const-string v8, "trigger_onepick"

    invoke-direct {v5, v6, v7, v8}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;->PICKER_OAUTH_TRIGGER:Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;

    new-instance v6, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;

    const-string v7, "PICKER_ALLOW_FOLDER_SELECTION"

    const/4 v8, 0x6

    const-string v9, "allow_folder_selection"

    invoke-direct {v6, v7, v8, v9}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;->PICKER_ALLOW_FOLDER_SELECTION:Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;

    new-instance v7, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;

    const-string v8, "GHP_STRUCTURE_ID"

    const/4 v9, 0x7

    const-string v10, "stid"

    invoke-direct {v7, v8, v9, v10}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;->GHP_STRUCTURE_ID:Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;

    new-instance v8, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;

    const-string v9, "GHP_ALLOWED_STRUCTURE_IDS"

    const/16 v10, 0x8

    const-string v11, "stids"

    invoke-direct {v8, v9, v10, v11}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;->GHP_ALLOWED_STRUCTURE_IDS:Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;

    new-instance v9, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;

    const-string v10, "GHP_ALLOW_STRUCTURE_CHANGE"

    const/16 v11, 0x9

    const-string v12, "stc"

    invoke-direct {v9, v10, v11, v12}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;->GHP_ALLOW_STRUCTURE_CHANGE:Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;

    new-instance v10, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;

    const-string v11, "GHP_INVITATION_TOKEN"

    const/16 v12, 0xa

    const-string v13, "itk"

    invoke-direct {v10, v11, v12, v13}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;->GHP_INVITATION_TOKEN:Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;

    filled-new-array/range {v0 .. v10}, [Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;->zbb:[Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;->zba:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;
    .locals 1

    const-class v0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;

    return-object p0
.end method

.method public static values()[Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;
    .locals 1

    sget-object v0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;->zbb:[Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;

    invoke-virtual {v0}, [Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;

    return-object v0
.end method
