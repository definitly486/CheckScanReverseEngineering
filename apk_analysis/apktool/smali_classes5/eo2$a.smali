.class public final Leo2$a;
.super Leo2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leo2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final b:Leo2$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Leo2$a;

    invoke-direct {v0}, Leo2;-><init>()V

    sput-object v0, Leo2$a;->b:Leo2$a;

    return-void
.end method
