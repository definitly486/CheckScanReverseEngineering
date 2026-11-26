.class public final Lcv0$c;
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
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li02<",
        "Lb57;",
        "Lb57;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcv0$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcv0$c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcv0$c;->a:Lcv0$c;

    return-void
.end method


# virtual methods
.method public final convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lb57;

    return-object p1
.end method
