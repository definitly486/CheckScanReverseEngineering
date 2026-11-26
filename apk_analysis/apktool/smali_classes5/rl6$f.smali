.class public final Lrl6$f;
.super Lrl6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrl6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# static fields
.field public static final c:Lrl6$f;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lrl6$f;

    const v1, 0x7f0802c5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f1404f8

    invoke-direct {v0, v2, v1}, Lrl6;-><init>(ILjava/lang/Integer;)V

    sput-object v0, Lrl6$f;->c:Lrl6$f;

    return-void
.end method


# virtual methods
.method public final e(Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;)V
    .locals 0

    invoke-interface {p1}, Lsl6;->onFeedbackClick()V

    return-void
.end method
