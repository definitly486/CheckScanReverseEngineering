.class public final Lcv0$b;
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
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li02<",
        "Lg37;",
        "Lg37;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcv0$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcv0$b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcv0$b;->a:Lcv0$b;

    return-void
.end method


# virtual methods
.method public final convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lg37;

    return-object p1
.end method
