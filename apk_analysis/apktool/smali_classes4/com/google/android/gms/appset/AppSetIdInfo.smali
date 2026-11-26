.class public Lcom/google/android/gms/appset/AppSetIdInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/appset/AppSetIdInfo$Scope;
    }
.end annotation


# static fields
.field public static final SCOPE_APP:I = 0x1

.field public static final SCOPE_DEVELOPER:I = 0x2


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/appset/AppSetIdInfo;->a:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/appset/AppSetIdInfo;->b:I

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/appset/AppSetIdInfo;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getScope()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/appset/AppSetIdInfo;->b:I

    return p0
.end method
