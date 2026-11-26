.class public final Ljt4$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljt4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lkt4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lot4;->a:Lfh8;

    invoke-virtual {v0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkt4;

    sput-object v0, Ljt4$b;->a:Lkt4;

    return-void
.end method
