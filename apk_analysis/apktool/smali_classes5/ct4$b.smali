.class public final Lct4$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lct4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lhc2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhc2<",
            "Lct4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lft4;->b:Lfh8;

    invoke-virtual {v0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhc2;

    sput-object v0, Lct4$b;->a:Lhc2;

    return-void
.end method
