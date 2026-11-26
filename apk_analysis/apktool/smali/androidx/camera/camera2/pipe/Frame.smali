.class public interface abstract Landroidx/camera/camera2/pipe/Frame;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/FrameReference;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/Frame$Companion;,
        Landroidx/camera/camera2/pipe/Frame$DefaultImpls;,
        Landroidx/camera/camera2/pipe/Frame$Listener;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/Frame$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/Frame$Companion;->$$INSTANCE:Landroidx/camera/camera2/pipe/Frame$Companion;

    sput-object v0, Landroidx/camera/camera2/pipe/Frame;->Companion:Landroidx/camera/camera2/pipe/Frame$Companion;

    return-void
.end method

.method public static synthetic access$awaitImage-A9nWXxg$jd(Landroidx/camera/camera2/pipe/Frame;ILe02;)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/camera/camera2/pipe/Frame;->awaitImage-A9nWXxg(ILe02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$awaitImage-NYG5g8E$jd(Landroidx/camera/camera2/pipe/Frame;ILe02;)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/camera/camera2/pipe/Frame;->awaitImage-NYG5g8E(ILe02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$awaitImages-NYG5g8E$jd(Landroidx/camera/camera2/pipe/Frame;ILe02;)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/camera/camera2/pipe/Frame;->awaitImages-NYG5g8E(ILe02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$getImage-aKI5c8E$jd(Landroidx/camera/camera2/pipe/Frame;I)Landroidx/camera/camera2/pipe/media/OutputImage;
    .locals 0

    invoke-super {p0, p1}, Landroidx/camera/camera2/pipe/Frame;->getImage-aKI5c8E(I)Landroidx/camera/camera2/pipe/media/OutputImage;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$getImage-iYJqvbA$jd(Landroidx/camera/camera2/pipe/Frame;I)Landroidx/camera/camera2/pipe/media/OutputImage;
    .locals 0

    invoke-super {p0, p1}, Landroidx/camera/camera2/pipe/Frame;->getImage-iYJqvbA(I)Landroidx/camera/camera2/pipe/media/OutputImage;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$getImages-aKI5c8E$jd(Landroidx/camera/camera2/pipe/Frame;I)Ljava/util/List;
    .locals 0

    invoke-super {p0, p1}, Landroidx/camera/camera2/pipe/Frame;->getImages-aKI5c8E(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$imageStatus-BWjvHWQ$jd(Landroidx/camera/camera2/pipe/Frame;I)I
    .locals 0

    invoke-super {p0, p1}, Landroidx/camera/camera2/pipe/FrameReference;->imageStatus-BWjvHWQ(I)I

    move-result p0

    return p0
.end method

.method public static awaitImage-A9nWXxg$suspendImpl(Landroidx/camera/camera2/pipe/Frame;ILe02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/Frame;",
            "I",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/media/OutputImage;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance p0, Loo5;

    const-string p1, "An operation is not implemented: Not yet implemented"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic awaitImage-NYG5g8E$suspendImpl(Landroidx/camera/camera2/pipe/Frame;ILe02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/Frame;",
            "I",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/media/OutputImage;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static awaitImages-NYG5g8E$suspendImpl(Landroidx/camera/camera2/pipe/Frame;ILe02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/Frame;",
            "I",
            "Le02<",
            "-",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/camera2/pipe/media/OutputImage;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance p0, Loo5;

    const-string p1, "An operation is not implemented: Not yet implemented"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract addListener(Landroidx/camera/camera2/pipe/Frame$Listener;)V
.end method

.method public abstract awaitFrameInfo(Le02;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/FrameInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public awaitImage-A9nWXxg(ILe02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/media/OutputImage;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Landroidx/camera/camera2/pipe/Frame;->awaitImage-A9nWXxg$suspendImpl(Landroidx/camera/camera2/pipe/Frame;ILe02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public awaitImage-NYG5g8E(ILe02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/media/OutputImage;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Landroidx/camera/camera2/pipe/Frame;->awaitImage-NYG5g8E$suspendImpl(Landroidx/camera/camera2/pipe/Frame;ILe02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public awaitImages-NYG5g8E(ILe02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Le02<",
            "-",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/camera2/pipe/media/OutputImage;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Landroidx/camera/camera2/pipe/Frame;->awaitImages-NYG5g8E$suspendImpl(Landroidx/camera/camera2/pipe/Frame;ILe02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract getFrameInfo()Landroidx/camera/camera2/pipe/FrameInfo;
.end method

.method public getImage-aKI5c8E(I)Landroidx/camera/camera2/pipe/media/OutputImage;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getImage-iYJqvbA(I)Landroidx/camera/camera2/pipe/media/OutputImage;
    .locals 0

    new-instance p0, Loo5;

    const-string p1, "An operation is not implemented: Not yet implemented"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getImages-aKI5c8E(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/media/OutputImage;",
            ">;"
        }
    .end annotation

    new-instance p0, Loo5;

    const-string p1, "An operation is not implemented: Not yet implemented"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method
