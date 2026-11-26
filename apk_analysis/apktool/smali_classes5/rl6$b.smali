.class public final Lrl6$b;
.super Lrl6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrl6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final c:Lrl6$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lrl6$b;

    const v1, 0x7f080220

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f1404f2

    invoke-direct {v0, v2, v1}, Lrl6;-><init>(ILjava/lang/Integer;)V

    sput-object v0, Lrl6$b;->c:Lrl6$b;

    return-void
.end method


# virtual methods
.method public final e(Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;)V
    .locals 0

    invoke-interface {p1}, Lsl6;->onElectroChequeClick()V

    return-void
.end method
