.class public final Leb8$c;
.super Leb8;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leb8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final a:Leb8$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Leb8$c;

    invoke-direct {v0}, Lsp7;-><init>()V

    sput-object v0, Leb8$c;->a:Leb8$c;

    return-void
.end method
