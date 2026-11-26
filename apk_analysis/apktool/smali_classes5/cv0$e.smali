.class public final Lcv0$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li02;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcv0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li02<",
        "Lb57;",
        "Lj59;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcv0$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcv0$e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcv0$e;->a:Lcv0$e;

    return-void
.end method


# virtual methods
.method public final convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lb57;

    invoke-virtual {p1}, Lb57;->close()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
