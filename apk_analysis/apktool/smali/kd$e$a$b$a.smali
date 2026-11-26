.class public final Lkd$e$a$b$a;
.super Lkd$e$a$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkd$e$a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final e:Lkd$e$a$b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkd$e$a$b$a;

    const-string v1, "cb_checked"

    const-string v2, "check_cb_button"

    invoke-static {v2, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Ljava/util/Map;

    invoke-direct {v0, v1}, Lkd$e$a;-><init>(Ljava/util/Map;)V

    sput-object v0, Lkd$e$a$b$a;->e:Lkd$e$a$b$a;

    return-void
.end method
