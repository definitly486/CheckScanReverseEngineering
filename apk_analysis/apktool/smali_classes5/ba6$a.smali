.class public final Lba6$a;
.super Lba6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lba6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lba6$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lba6$a;

    invoke-direct {v0}, Lsp7;-><init>()V

    sput-object v0, Lba6$a;->a:Lba6$a;

    return-void
.end method
